.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, 58
sub cl, 32
and rbx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 3
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
jmp .bb_0.1
.bb_0.1:
add rax, -1969014465
setnle cl
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 3
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
not esi
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 52
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
adc esi, 87
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
