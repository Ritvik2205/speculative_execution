.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
and dl, cl
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
cmovs eax, ecx
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
or al, cl
cmovnl di, dx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
bts cx, 14
and bl, -24 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
cmovnb di, bx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
test rax, -2052112368
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
or dl, bl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
jmp .bb_0.2
.bb_0.2:
btr ecx, ecx
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
cmovs rcx, rax
cmovnbe rbx, rax
and eax, -85386306
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], di
btr ecx, eax
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], -23
cmovbe ebx, edx
or bl, cl
btc rsi, 80
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
bt esi, edx
and dl, 119 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
cmovnbe rdx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
