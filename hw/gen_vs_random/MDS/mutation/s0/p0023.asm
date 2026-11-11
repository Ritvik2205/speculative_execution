.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
test dl, -95
bts ax, si
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
cmovnp cx, cx
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
btr rax, 29
and al, 2 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
btc edx, 75
cmovnb si, di
cmovb rcx, rdi
cmovnb edx, eax
or ax, -23697
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
cmovo dx, ax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
test bx, ax
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
btr bx, ax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
