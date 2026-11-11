.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
lea bx, qword ptr [rdx + rbx]
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], esi
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 72
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
add rsi, 7
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 33
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 70
movsx dx, cl
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 17
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
add al, cl
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
or dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
