.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -58
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
or bl, 127
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -117
xor dl, al
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
jmp .bb_0.1
.bb_0.1:
and rbx, 65
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rcx
or bl, -62
jmp .bb_0.2
.bb_0.2:
or cl, al
and al, 75
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
