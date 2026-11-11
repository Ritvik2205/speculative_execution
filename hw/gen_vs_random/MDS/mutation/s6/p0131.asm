.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -11 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
or edx, edx
and cl, cl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ebx
xor rsi, rsi
and di, si
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
jmp .bb_0.1
.bb_0.1:
and al, 2 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
cmovo dx, ax
or ax, 85
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
btr bx, ax
cmovnb si, di
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
btr rax, 56
btc edx, 75
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
test bx, ax
bts ax, si
test dl, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
