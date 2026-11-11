.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 99
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
xor ax, -4010
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
xor al, al
cmovnb rdx, rcx
jmp .bb_0.1
.bb_0.1:
test rax, 337705873
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
test dl, -119
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
xor dl, -59
and cl, cl
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 33
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 9
or eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
