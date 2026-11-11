.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -83
and sil, dl
test sil, dl
and bl, 68
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
test bl, -14
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rcx
or cl, al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 67
test sil, bl
or al, cl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 67
or rax, 302048971
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
