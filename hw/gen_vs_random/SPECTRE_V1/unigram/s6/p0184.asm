.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
setno al
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
add dl, 121 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
add cl, 45 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
add cl, 9 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rcx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
or si, 3
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
btr di, ax
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edi
xor dl, dl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
