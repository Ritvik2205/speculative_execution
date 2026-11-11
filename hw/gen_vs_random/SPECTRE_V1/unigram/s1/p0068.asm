.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rax, 140
add al, -54 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 30
and rdx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edi
lea bx, qword ptr [rdx + rbx]
and rcx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rbx
mov dil, dil
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], ax
btr eax, 253
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
add al, 51 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rcx]
test si, 43
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
