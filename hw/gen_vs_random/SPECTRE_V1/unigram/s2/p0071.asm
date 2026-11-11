.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setno bl
add al, -92 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
test si, 23
cmovnz rcx, rdi
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdi]
lea cx, qword ptr [rbx + rdi + 18]
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rcx
imul edi, edx
cmovno rdx, rax
or bl, 95
setno al
and dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
