.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
setno bl
test al, 34
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
sub al, dil
not ax
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
test bl, -8
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
