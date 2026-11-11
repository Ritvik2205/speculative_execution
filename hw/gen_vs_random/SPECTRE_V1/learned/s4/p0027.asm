.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 73 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
test bl, 72
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
cmovs ax, di
or dl, dl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, -64
and rdx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdx]
test rax, rdx
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
and sil, 84
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 1
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 39
cmovno rbx, rsi
bts edi, ecx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
cmovnbe ax, bx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 10
xor sil, 1
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
