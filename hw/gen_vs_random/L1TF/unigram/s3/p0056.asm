.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 67
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rcx
sub esi, 62
and dil, 98
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rsi], esi
sbb rax, -1477844571
and rax, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
add dl, 43 # instrumentation
lea rax, qword ptr [rdx + rsi]
btc ax, di
movzx rdx, dil
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], esi
xchg eax, ebx
neg al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
