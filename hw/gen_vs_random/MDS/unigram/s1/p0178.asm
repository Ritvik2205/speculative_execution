.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rsi
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 86
and rdx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdx]
btr edi, 221
and si, si
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
test rsi, rcx
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
xor al, bl
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
test al, 66
and al, 39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
cmovl rax, rbx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], ax
btc dx, 146
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
cmovle di, bx
and rax, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rax]
xor sil, 94
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
