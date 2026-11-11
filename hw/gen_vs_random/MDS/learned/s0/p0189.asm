.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, dl
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
or al, 37
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
or dil, -78
test al, 127
xor bl, -102
or edx, -78
xor sil, -126
xor sil, -15
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
test al, -7
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
