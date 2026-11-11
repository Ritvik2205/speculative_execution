.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
xor dl, dil
and rbx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rbx]
add cx, -103
mov dil, sil
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
cmp dx, 46
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], esi
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
adc bl, -76
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 47
and rdi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdi]
and dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
