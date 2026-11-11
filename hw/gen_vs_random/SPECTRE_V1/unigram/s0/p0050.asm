.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 45
and rcx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rcx]
cmovnb rdx, rdi
add cl, 103 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
cmovnbe rbx, rax
or rcx, rsi
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], cl
lea edx, qword ptr [rax + rsi + 40]
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rbx + rbx]
sub si, 32
movsx rbx, ax
or cl, dl
cmp al, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
