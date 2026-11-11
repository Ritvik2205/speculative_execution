.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, dl
test rsi, 68
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and dil, dl
and dl, dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
xor bl, -88
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
test eax, -1634766116
or cx, 49
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
