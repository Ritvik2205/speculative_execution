.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -4
and ax, 31082
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
or cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rcx], cx
and cl, -127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdx]
test eax, 298249463
or cl, dl
or dl, bl
and ax, di
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
test rsi, rsi
cmovp rdi, rax
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
and bl, 101 # instrumentation
cmovno esi, ebx
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
