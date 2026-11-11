.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
or dil, 12
bts rsi, 221
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
jmp .bb_0.1
.bb_0.1:
and cl, dl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
or ax, 16560
jmp .bb_0.2
.bb_0.2:
xor dil, sil
bt cx, dx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
bt cx, ax
test ax, 6113
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
xor cl, al
not dl
and eax, -85386306
and rax, 627810357
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 39
test al, cl
or al, -17
or sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
