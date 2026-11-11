.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, dil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and bl, -34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
and al, 73
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rsi]
or cl, 100
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rbx
bt ebx, 107
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rcx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
test bl, al
and bl, 122 # instrumentation
cmovnbe ebx, eax
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
cmovs edx, esi
xor al, 78
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
cmovbe si, di
cmovnb bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
