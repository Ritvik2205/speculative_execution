.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
or al, sil
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 7
cmovbe rbx, rcx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 91
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp ecx, 74
or dl, 41
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 98
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rax
sub al, -1
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
