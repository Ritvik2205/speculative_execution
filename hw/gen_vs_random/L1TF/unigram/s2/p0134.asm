.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ecx, 71
btc bx, ax
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], di
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
and dl, 10
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
add bl, -77 # instrumentation
cmovns bx, si
or al, al
btc ax, 62
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -6
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 78
btc rax, rsi
xor rax, rsi
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
test eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
