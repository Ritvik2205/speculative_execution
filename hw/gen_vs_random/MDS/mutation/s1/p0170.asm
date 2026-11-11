.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
and al, 2 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
cmovb rcx, rdi
cmovnp cx, cx
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
cmovnb edx, eax
test bx, ax
test dl, -95
or ax, -4210
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
cmovnb si, di
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
bts ax, si
cmovo dx, ax
btc edx, 7
btr rax, 56
btr bx, ax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
