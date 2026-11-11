.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rsi, 206
and dl, 120 # instrumentation
cmovnz ecx, ebx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
btc rbx, rbx
btr ebx, esi
or cl, al
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
or dl, 51
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
test cl, 0
and rdx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rax], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
