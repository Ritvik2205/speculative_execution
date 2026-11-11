.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rax, rdx
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 101
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
or rbx, -72
and rcx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], -86
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
and bl, 107 # instrumentation
cmovbe bx, ax
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
test al, al
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], di
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 6
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
and bl, 49 # instrumentation
cmovbe rdx, rcx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
