.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
cmovnz rsi, rcx
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
cmovnbe edi, eax
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rdx], di
cmovnp rdi, rsi
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 99
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
and dl, 13 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], ax
test esi, 425331143
cmovle eax, edx
xor al, 9
not dl
bts dx, di
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rcx
xor dl, 8
not ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
