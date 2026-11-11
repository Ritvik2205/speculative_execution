.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 2 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
cmovo dx, ax
or ax, -7150
cmovnp cx, cx
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
cmovnb edx, eax
cmovb rcx, rdi
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 0
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
bt rsi, 238
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and cl, -6
cmovl edx, edx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
cmovo rdx, rdx
bt dx, 162
cmovnz cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
