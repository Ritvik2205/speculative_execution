.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, ax
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
cmovb rcx, rdi
or ax, -23697
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
btr rax, 209
cmovnp cx, cx
btr bx, ax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
bts ax, si
cmovnb si, di
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
cmovo dx, ax
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
btc edx, 7
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
cmovnb edx, eax
and al, 2 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
test dl, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
