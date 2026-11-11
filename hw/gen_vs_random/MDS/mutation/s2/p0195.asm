.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
and dl, 34 # instrumentation
cmovno edx, eax
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rax
or bl, -52
btc bx, di
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
test eax, 298249463
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
test ax, -11534
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
and dl, 37 # instrumentation
cmovnbe si, ax
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
btc si, 99
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
