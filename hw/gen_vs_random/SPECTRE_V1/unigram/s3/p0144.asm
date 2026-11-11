.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnle dl
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
cmp al, sil
sub sil, -55
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], di
cmovnp rcx, rdx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
add al, 112 # instrumentation
setl al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
adc cl, bl
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
