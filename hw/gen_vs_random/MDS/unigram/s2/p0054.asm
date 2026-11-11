.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr di, cx
cmovb rbx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
or si, 0b1000000000000000 # instrumentation
bsf ax, si
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ebx
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
bt rcx, 28
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], cx
and dx, 60
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
xor edi, esi
test al, bl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
test ecx, -1843375753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
