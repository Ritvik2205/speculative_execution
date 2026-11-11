.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 115
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 21
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
jmp .bb_0.1
.bb_0.1:
add al, 50 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
and dl, -18 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 43
cmovo edi, ecx
and bl, 71
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
bts esi, 81
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
cmovbe si, cx
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdx
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
