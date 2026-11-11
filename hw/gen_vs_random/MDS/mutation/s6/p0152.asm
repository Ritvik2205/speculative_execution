.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, -23697
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
cmovnp cx, cx
bts ax, si
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
btc edx, 75
btr bx, ax
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and al, 2 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
btr rax, 209
test bx, ax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
cmovo dx, ax
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
cmovb rcx, rdi
cmovnb edx, eax
test dl, -85
cmovnb si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
