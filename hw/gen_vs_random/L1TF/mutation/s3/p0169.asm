.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul bl
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
sbb cl, bl
adc dl, cl
add bl, 13 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
cmovnb rdx, rdx
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx]
lea cx, qword ptr [rdx + rsi + 32229]
add dl, 89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
not dl
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
xor edi, 48
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], bx
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
