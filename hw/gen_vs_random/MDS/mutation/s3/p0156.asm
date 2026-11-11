.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and dl, -59 # instrumentation
cmovbe ax, si
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
xor ax, -6793
xor al, 122
jmp .bb_0.1
.bb_0.1:
and bl, 16 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], cx
test dl, 9
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edx
cmovnb di, cx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], bx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and cl, -13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
