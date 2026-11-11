.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
test al, sil
xor al, cl
btc ax, bx
xor cl, -13
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], ax
and dil, bl
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
