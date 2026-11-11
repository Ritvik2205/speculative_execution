.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 232
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 105
imul al
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
or cl, al
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
imul rdi, rsi
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 26
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
imul cx, dx
cmovb ecx, esi
add dl, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
lea eax, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
