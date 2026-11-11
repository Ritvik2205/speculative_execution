.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 90
btc di, di
and dl, -49
btc ebx, 11
setno dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ebx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdi
cmovo rax, rsi
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
setb al
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -101
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
