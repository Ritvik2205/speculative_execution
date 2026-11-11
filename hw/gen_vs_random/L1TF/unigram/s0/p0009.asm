.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, cl
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
add cl, -94 # instrumentation
setnb al
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovle rcx, rbx
bt cx, bx
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
sbb dl, -26
lea si, qword ptr [rdi + rax + 31]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], -8408
lea bx, qword ptr [rbx + rcx + 99]
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
add al, -71 # instrumentation
adc eax, eax
sub cl, al
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 82
and rbx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
