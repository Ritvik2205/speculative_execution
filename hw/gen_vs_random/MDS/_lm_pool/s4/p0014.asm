.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
and bl, 68
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
or al, 16
not al
or sil, al
jmp .bb_0.1
.bb_0.1:
test edi, -1252846009
and cl, cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ebx
or bl, sil
test eax, -1634766116
and al, 14
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 3
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
