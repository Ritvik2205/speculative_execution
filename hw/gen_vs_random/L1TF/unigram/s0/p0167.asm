.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnbe al
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
setnbe dl
setz sil
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
add al, -117 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ecx
lea rsi, qword ptr [rax + rsi]
add bx, ax
add bl, 37 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 5
btc cx, di
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
sub di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
