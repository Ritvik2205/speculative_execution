.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 22
btc di, di
setno dil
and dl, 59
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
btc ebx, 11
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdi
cmovo rax, rsi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ebx
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -101
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
setb al
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
