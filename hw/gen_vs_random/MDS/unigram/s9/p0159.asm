.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, rdx
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rdx
and cl, 91 # instrumentation
cmovle rcx, rcx
or al, -24
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
cmovbe edi, ebx
and cl, -71
and rcx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
cmovs rbx, rdx
jmp .bb_0.1
.bb_0.1:
bt edi, 17
cmovb di, cx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
and al, -8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
