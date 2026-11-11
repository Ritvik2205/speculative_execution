.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
and esi, eax
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 35
setnb cl
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 4
test al, -5
cmovnbe di, di
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 25
setnbe bl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 41
btc ecx, eax
xchg si, ax
and rsi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rsi]
cmovo rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
