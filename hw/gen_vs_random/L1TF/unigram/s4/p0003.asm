.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc edi
inc ebx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ecx
add eax, 109
lea si, qword ptr [rbx + rcx + 44]
test edi, 61
add al, 82 # instrumentation
adc al, sil
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx]
neg cx
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
setno bl
adc eax, eax
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
add bl, -37 # instrumentation
dec al
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
