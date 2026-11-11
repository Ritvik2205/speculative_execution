.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb edx, eax
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and al, 2 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
btr rax, 29
cmovo dx, ax
or ax, -23697
test bx, ax
cmovb rcx, rdi
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
cmovnp cx, cx
btr bx, ax
btc edx, 75
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
test dl, -95
bts ax, si
cmovnb si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
