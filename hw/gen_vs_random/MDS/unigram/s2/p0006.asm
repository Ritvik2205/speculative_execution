.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
cmovbe di, dx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and al, -68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
cmovb rax, rdx
or si, 0b1000000000000000 # instrumentation
bsf si, si
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
test al, al
or cl, 7
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
test rsi, 69
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
or bx, 61
and ebx, 60
test dl, al
cmovnl di, bx
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
