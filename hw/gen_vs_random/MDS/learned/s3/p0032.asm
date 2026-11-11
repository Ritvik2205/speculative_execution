.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 122 # instrumentation
cmovnbe ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
cmovo di, ax
cmovns rsi, rdx
test sil, 19
adc al, al
xor al, al
add cl, 29 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 57
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rdi]
or dl, -115
and rdi, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rax
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and bl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
xor al, -15
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -16
or rdx, 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
