.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
cmovb ax, dx
and rdi, -60
cmovns rax, rcx
setnle sil
cmovnbe edi, edx
cmp al, al
sub cl, 32
xor cx, -79
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and si, bx
mov bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], bl
not cl
lea esi, qword ptr [rdi]
cmovnz edx, ecx
and dil, al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
