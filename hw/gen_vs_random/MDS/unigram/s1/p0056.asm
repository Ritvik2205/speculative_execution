.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rbx, 44
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
bts eax, 222
and al, 61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
or dx, 0b1000000000000000 # instrumentation
bsf si, dx
test al, sil
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 64
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rsi
and rax, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 40
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
cmovnle rsi, rbx
bt bx, si
test dil, 46
and dl, 34 # instrumentation
cmovno edx, eax
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
