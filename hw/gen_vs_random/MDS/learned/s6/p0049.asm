.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, eax
xor al, 99
and eax, 366961170
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor dil, -124
or sil, -49
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 25
or al, -24
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
test rdi, 77
or al, 30
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
or sil, sil
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
