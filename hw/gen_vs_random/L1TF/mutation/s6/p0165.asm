.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rbx]
add dl, 82 # instrumentation
adc dl, cl
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], bx
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rsi], di
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
test ebx, edi
and rax, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rax]
lea di, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
test dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
