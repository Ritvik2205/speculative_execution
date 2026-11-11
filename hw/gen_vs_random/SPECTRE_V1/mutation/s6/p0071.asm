.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdi]
setbe al
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
bt rbx, 224
lea rbx, qword ptr [rbx + rdi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
imul edx, ebx
test sil, 13
setle dl
and dl, dl
and rdi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, -40
sub eax, -882981501
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
imul eax
test eax, 133988823
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 126
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
