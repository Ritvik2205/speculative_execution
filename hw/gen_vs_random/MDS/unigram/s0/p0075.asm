.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
xor rax, -345061362
and al, 34 # instrumentation
cmovno eax, ebx
or al, dil
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
xor dil, 81
cmovle cx, di
test ebx, -961564216
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], eax
cmovnb rsi, rsi
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
and cl, -127 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
and dl, bl
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
test rax, rcx
btc rdi, 221
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
