.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rcx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
add cl, -103 # instrumentation
cmovnl rax, rbx
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 358568732
setnb al
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
cmp esi, 53
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
or dl, 48
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 114
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 7
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
