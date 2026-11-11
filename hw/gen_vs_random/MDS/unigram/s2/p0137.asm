.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
or al, al
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
test esi, 425331143
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
cmovz dx, cx
or dx, dx
bt si, di
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 50
cmovnz rax, rsi
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rcx
bt ecx, edi
cmovns rsi, rax
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
and dl, al
and rdi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
