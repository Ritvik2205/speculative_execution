.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 16
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
xor rdx, -59
bts di, 37
cmovz rax, rax
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
bt rdi, rsi
and esi, 10
cmovp di, dx
cmovnb si, cx
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
test al, cl
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
and al, 70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdi]
and cl, -49 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
or edi, -88
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ecx
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
