.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, ax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
test dl, 9
cmovo dx, ax
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
bts ax, si
or ax, 30524
cmovnb edx, eax
cmovnp cx, cx
cmovnb si, di
btr bx, ax
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and al, 2 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
btr rax, 56
btc edx, 7
cmovb rcx, rdi
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
