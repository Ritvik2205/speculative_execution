.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 15 # instrumentation
cmovb edi, edi
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
dec bl
lea rcx, qword ptr [rbx + rsi + 4951]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
add al, -21 # instrumentation
mov edi, ecx
add sil, 18
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ecx
add sil, -111
add sil, -111
xor bl, al
cmovno rbx, rsi
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 6
jmp .bb_0.1
.bb_0.1:
or dl, 34
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dl
mov dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
