.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dil
cmovns ecx, ebx
cmovl edx, edx
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
cmovnb edi, edi
cmovle ebx, edx
bt edx, 254
cmovb rax, rdi
and rbx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rbx]
or dl, 22
and dl, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
xor rdi, -50
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
xor al, 78
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
xor cl, 122
and rax, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rax]
cmovp ebx, ebx
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
