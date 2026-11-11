.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
cmovnb dx, bx
cmovnb dx, si
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 72
jmp .bb_0.1
.bb_0.1:
xchg di, ax
xor bl, 2
and rcx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
and dil, 82
and eax, -2116875023
and dl, -73 # instrumentation
cmovns rax, rsi
add dl, -124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
btc rcx, rdi
or rdx, rax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], -13
or al, al
cmovs edi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
